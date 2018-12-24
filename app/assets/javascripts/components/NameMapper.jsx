class NameMapper extends React.Component {
  render(){
    return(
    <a href={this.props.moves}>
        <img src={this.props.name} width={this.props.size} height={this.props.size} style={this.props.anchor}/>
   </a>
    )
  }
}