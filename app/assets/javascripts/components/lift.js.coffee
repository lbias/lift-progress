@Lift = React.createClass
  getInitialState: ->
    edit: false
    onerm: @props.lift.onerm
    ismetric: @props.lift.ismetric
  handleToggle: (e) ->
    e.preventDefault()
    @setState edit: !@state.edit
  toggleUnit: (e) ->
    e.preventDefault()
    @setState ismetric: !@state.ismetric
  liftRow: ->
    React.DOM.tr null,
      React.DOM.td null, @props.lift.date
      React.DOM.td null, @props.lift.liftname
      React.DOM.td null, @props.lift.weightlifted
      React.DOM.td null, @props.lift.repsperformed
      React.DOM.td null, @props.lift.onerm
      React.DOM.td null, @props.lift.ismetric.toString()
      React.DOM.td null,
        React.DOM.button
          className: 'btn btn-primary'
          onClick: @handleToggle
          'Edit'
        React.DOM.button
          className: 'btn btn-danger'
          onClick: @handleDelete
          'Delete'
  handleDelete: (e) ->
    e.preventDefault()
    $.ajax
      method: 'DELETE'
      url: "/lifts/#{ @props.lift.id }"
      dataType: 'JSON'
      success: () =>
        @props.handleDeleteLift @props.lift
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.lift.date
      React.DOM.td null, @props.lift.liftname
      React.DOM.td null, @props.lift.weightlifted
      React.DOM.td null, @props.lift.repsperformed
      React.DOM.td null, @props.lift.onerm
      React.DOM.td null, @props.lift.ismetric.toString()
      React.DOM.td null,
        React.DOM.a
          className: 'btn btn-danger'
          onClick: @handleDelete
          'Delete'
