@Lifts = React.createClass
  getInitialState: ->
    lifts: @props.data
  getDefaultProps: ->
    lifts: []
  render: ->
    React.DOM.div
      className: 'lifts'
      React.DOM.h1
        className: 'title'
        'Lifts'
