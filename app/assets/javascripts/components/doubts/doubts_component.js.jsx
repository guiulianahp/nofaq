var DoubtsComponent = React.createClass({
	getInitialState: function(){
		return {doubts: this.props.data}
	},
	getDefaultProps:function(){
		return {doubts: []}
	},

	componentDidMount: function(){
	},
	render: function(){
		doubts = this.state.doubts
		debugger
		return(
			<div className='loading-content'>
				{this.state.doubts.length}
		   	</div>
		);
	}
})