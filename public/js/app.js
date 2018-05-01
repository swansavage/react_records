// Rendered by Records Component when addRecordIsVisible
class RecordForm extends React.Component{
    constructor(props){
        super(props)
        this.handleChange = this.handleChange.bind(this)
        this.handleSubmit = this.handleSubmit.bind(this)
        this.state = {
            artist: '',
            album_title: '',
            image: '',
            release_date: '',
            description: '',
            price: 0,
            qty: 0
        }
    }
    componentDidMount(){
        if(this.props.record){
            this.setState({
                artist: this.props.record.artist,
                album_title: this.props.record.album_title,
                image: this.props.record.image,
                release_date: this.props.record.release_date,
                description: this.props.record.description,
                price: this.props.record.price,
                qty: this.props.record.qty,
                id: this.props.record.id
            })
        }
    }
    handleChange(event){
        // event.preventDefault();
        this.setState({ [event.target.id]: event.target.value})
    }
    handleSubmit(event){
        event.preventDefault();
        this.props.handleSubmit(this.state)
    }
    render(){
        return  <div>

                <div className='field'>

                    <form onSubmit={this.handleSubmit}>

                        <label
                            className='label'
                            for='artist'>Artist name
                        </label>
                        <div className='control'>
                            <input
                            className='input'
                            type='text'
                            id='artist'
                            onChange={this.handleChange}
                            value={this.state.artist}
                            />
                        </div>

                        <label
                            className='label'
                            for='album_title'>Album title
                        </label>
                        <div className='control'>
                            <input
                            className='input'
                            type='text'
                            id='album_title'
                            onChange={this.handleChange}
                            value={this.state.album_title}
                            />
                        </div>

                        <label
                            className='label'
                            for='image'>Image
                        </label>
                        <div className='control'>
                            <input
                            className='input'
                            type='text'
                            id='image'
                            onChange={this.handleChange}
                            value={this.state.image}
                            />
                        </div>

                        <label
                            className='label'
                            for='release_date'>Release date
                        </label>
                        <div className='control'>
                            <input
                            className='input'
                            type='text'
                            id='release_date'
                            onChange={this.handleChange}
                            value={this.state.release_date}
                            />
                        </div>

                        <label
                            className='label'
                            for='description'>Description
                        </label>
                        <div className='control'>
                            <input
                            className='textarea'
                            type='textarea'
                            id='description'
                            onChange={this.handleChange}
                            value={this.state.description}
                            />
                        </div>

                        <label
                            className='label'
                            for='price'>Price
                        </label>
                        <div className='control'>
                            <input
                            className='input'
                            type='text'
                            id='price'
                            onChange={this.handleChange}
                            value={this.state.price}
                            />
                        </div>

                        <label
                            className='label'
                            for='qty'>Quantity in Stock
                        </label>
                        <div className='control'>
                            <input
                            className='input'
                            type='text'
                            id='qty'
                            onChange={this.handleChange}
                            value={this.state.qty}
                            />
                        </div>

                        <div className="button-container">
                            <div className='control'>
                                <input className='button is-warning' type='submit' />
                            </div>

                            <button
                                className='button is-danger'
                                onClick={()=>this.props.toggleState('addRecordIsVisible', 'recordsListIsVisible')}>Cancel
                            </button>
                        </div>

                    </form>




                </div>
            </div>
    }
}

class EditRecordForm extends React.Component{
    constructor(props){
        super(props)
        this.handleChange = this.handleChange.bind(this)
        this.handleSubmit = this.handleSubmit.bind(this)
        this.state = {
            artist: '',
            album_title: '',
            image: '',
            release_date: '',
            description: '',
            price: 0,
            qty: 0
        }
    }
    componentDidMount(){
        if(this.props.record){
            this.setState({
                artist: this.props.record.artist,
                album_title: this.props.record.album_title,
                image: this.props.record.image,
                release_date: this.props.record.release_date,
                description: this.props.record.description,
                price: this.props.record.price,
                qty: this.props.record.qty,
                id: this.props.record.id
            })
        }
    }
    handleChange(event){
        // event.preventDefault();
        this.setState({ [event.target.id]: event.target.value})
    }
    handleSubmit(event){
        event.preventDefault();
        this.props.handleSubmit(this.state)
    }
    render(){
        return  <div>

                <div className='field'>

                    <form onSubmit={this.handleSubmit}>

                        <label
                            className='label'
                            for='artist'>Artist name
                        </label>
                        <div className='control'>
                            <input
                            className='input'
                            type='text'
                            id='artist'
                            onChange={this.handleChange}
                            placeholder={this.props.record.artist}
                            />
                        </div>

                        <label
                            className='label'
                            for='album_title'>Album title
                        </label>
                        <div className='control'>
                            <input
                            className='input'
                            type='text'
                            id='album_title'
                            onChange={this.handleChange}
                            placeholder={this.props.record.album_title}
                            />
                        </div>

                        <label
                            className='label'
                            for='image'>Image
                        </label>
                        <div className='control'>
                            <input
                            className='input'
                            type='text'
                            id='image'
                            onChange={this.handleChange}
                            placeholder={this.props.record.image}
                            />
                        </div>

                        <label
                            className='label'
                            for='release_date'>Release date
                        </label>
                        <div className='control'>
                            <input
                            className='input'
                            type='text'
                            id='release_date'
                            onChange={this.handleChange}
                            placeholder={this.props.record.release_date}
                            />
                        </div>

                        <label
                            className='label'
                            for='description'>Description
                        </label>
                        <div className='control'>
                            <input
                            className='textarea'
                            type='textarea'
                            id='description'
                            onChange={this.handleChange}
                            placeholder={this.props.record.description}
                            />
                        </div>

                        <label
                            className='label'
                            for='price'>Price
                        </label>
                        <div className='control'>
                            <input
                            className='input'
                            type='text'
                            id='price'
                            onChange={this.handleChange}
                            placeholder={this.props.record.price}
                            />
                        </div>

                        <label
                            className='label'
                            for='qty'>Quantity in Stock
                        </label>
                        <div className='control'>
                            <input
                            className='input'
                            type='text'
                            id='qty'
                            onChange={this.handleChange}
                            placeholder={this.props.record.qty}
                            />
                        </div>

                        <div className="button-container">
                            <div className='control'>
                                <input className='button is-warning' type='submit' />
                            </div>

                            <button
                                className='button is-danger'
                                onClick={()=>this.props.toggleState('editRecordIsVisible', 'recordsListIsVisible')}>Cancel
                            </button>
                        </div>

                    </form>




                </div>
            </div>
    }
}

// Rendered by Records Component when recordIsVisible
class Record extends React.Component{
    render(){
        return  <div>
                        <button
                             id="see-full" className='button is-warning' onClick={()=>this.props.toggleState('recordIsVisible', 'recordsListIsVisible')}>See Full List
                        </button>

                    <div className="show-record">
                            <div className="record-img">
                                <img className="show-image" src={this.props.record.image}/>
                            </div>
                            <div className="record-info">
                                <h3>
                                    <span>Artist Name: </span>
                                        {this.props.record.artist}
                                </h3>

                                <p>
                                    <span>Album Title: </span>
                                    {this.props.record.album_title}
                                </p>

                                <p>
                                    <span>Release Date: </span>
                                    {this.props.record.release_date}
                                </p>

                                <p>
                                    <span>Description: </span>
                                    {this.props.record.description}
                                </p>

                                <p>
                                    <span>Price: </span>
                                    {this.props.record.price}
                                </p>

                                <p>
                                    <span>Quantity: </span>
                                    {this.props.record.qty}
                                </p>

                            </div>

                    </div>



                </div>
    }
}

// Rendered by Records Component when recordsListIsVisible
class RecordsList extends React.Component{
    render(){
        return  <div className="container">
                    <div className="shelf-container">

                        {this.props.records.map((record, index) => {
                            return  <div className="record-card">

                                     <div className="record">

                                                <h3 className="artist"> {record.artist} </h3>
                                                <h3 className="album"> {record.album_title}</h3>
                                                <div className="record-image">
                                                    <img
                                                        src={record.image}
                                                        onClick={()=>
                                                            { this.props.getRecord(record); this.props.toggleState('recordsListIsVisible', 'recordIsVisible')}}/>
                                                </div>
                                                <h3 className="price"> ${record.price} </h3>
                                        </div>

                                        <div className="buttons-container">
                                            <button
                                                className='button is-warning is-small'
                                                onClick={()=>{ this.props.toggleState('recordsListIsVisible', 'editRecordIsVisible')
                                                this.props.getRecord(record)}}
                                            ><i class="far fa-edit fa-lg"></i></button>



                                            <button
                                                className='button is-danger is-small'
                                                onClick={() => this.props.deleteRecord(record, index)}
                                            ><i class="far fa-trash-alt fa-lg"></i></button>
                                        </div>

                                    </div>
                        })}


                    </div>
                </div>
    }
}

// Rendered by App Component
class Records extends React.Component{
    constructor(props){
        super(props)
        this.state = {
            recordsListIsVisible: true,
            addRecordIsVisible: false,
            recordIsVisible: false,
            editRecordIsVisible: false,
            records: [],
            record: {}
        }
        this.deleteRecord = this.deleteRecord.bind(this)
        this.getRecord = this.getRecord.bind(this)
        this.toggleState = this.toggleState.bind(this)
        this.handleCreate = this.handleCreate.bind(this)
        this.handleCreateSubmit = this.handleCreateSubmit.bind(this)
        this.handleUpdateSubmit = this.handleUpdateSubmit.bind(this)
    }
    componentDidMount(){
        this.getRecords();
    }
    deleteRecord(record, index){
        fetch('records/' + record.id,
            {
                method: 'DELETE'
            })
            .then(data => {
                this.setState({
                    records: [
                        ...this.state.records.slice(0, index),
                        ...this.state.records.slice(index + 1)
                    ]
                })
            })
    }
    getRecord(record){
        this.setState({record: record})
    }
    getRecords(){
        fetch('/records')
            .then(response => response.json())
            .then(data => {
                this.setState({
                    records: data
                })
            }).catch(error => console.log(error))
    }
    toggleState(st1, st2){
        this.setState({
            [st1]: !this.state[st1],
            [st2]: !this.state[st2]
        })
    }
    handleCreate(record){
        const updatedRecords = this.state.records
        updatedRecords.unshift(record)
        this.setState({records: updatedRecords})
    }
    handleCreateSubmit(record){
        fetch('/records', {
            method: 'POST',
            body: JSON.stringify(record),
            headers: {
                'Accept': 'application/json, text/plain, */*',
                'Content-Type': 'application/json'
            }
        })
        .then(jsonedRecord => {
            this.handleCreate(jsonedRecord)
            this.getRecords()
            this.toggleState('addRecordIsVisible', 'recordsListIsVisible')
        })
    }
    handleUpdateSubmit(record){
        fetch('/records/' + record.id, {
            body: JSON.stringify(record),
            method: 'PUT',
            headers: {
                'Accept': 'application/json, text/plain, */*',
                'Content-Type': 'application/json'
            }
        })
        .then(updatedRecord => {
            return updatedRecord.json()
        })
        .then(jsonedRecord => {
            this.getRecords()
            this.toggleState('recordsListIsVisible', 'editRecordIsVisible')
        })
        .catch(error => console.log(error))
    }
    render(){
        return  <div className='records column'>

                    {this.state.recordsListIsVisible ?
                        <button
                            id="add-button"
                            className='button is-success'
                            onClick={()=>this.toggleState('addRecordIsVisible', 'recordsListIsVisible')}>
                            <i class="fas fa-plus-circle"></i> Add a Record
                        </button> : ''
                    }

                    <h2 className="section-title">Records</h2>
                    {this.state.recordsListIsVisible ?
                        <RecordsList
                            toggleState={this.toggleState}
                            records={this.state.records}
                            getRecord={this.getRecord}
                            deleteRecord={this.deleteRecord}
                            handleUpdateSubmit={this.handleUpdateSubmit}
                        /> : ''
                    }

                    {this.state.addRecordIsVisible ?
                        <RecordForm
                            toggleState={this.toggleState}
                            handleCreate={this.handleCreate}
                            handleSubmit={this.handleCreateSubmit}
                        /> : ''
                    }

                    {this.state.recordIsVisible ?
                        <Record
                            toggleState={this.toggleState}
                            record={this.state.record}
                            // handleSubmit={this.handleUpdateSubmit}
                        /> : ''
                    }

                    {this.state.editRecordIsVisible ?
                        <EditRecordForm
                            toggleState={this.toggleState}
                            handleSubmit={this.handleUpdateSubmit}
                            record={this.state.record}
                        /> : ''
                    }
                </div>
    }
}




// Rendered by ReactDOM, renders Title and Records Component
class App extends React.Component{
    render(){
        return  <div className='section'>
                    <div className="hero-image">
                        <div className="hero-text">
                            <h1 className="title">React Records!</h1>
                            <h2 className="sub-title"> {"A Curated Selection of Vinyl Records"}</h2>
                        </div>
                    </div>
                    <Records />
                    <footer>

                            <p>Created by Trenton Marks, Natalie Wolff, and Shaun Savage</p>


                            <p>Header Photo by <a href="https://burst.shopify.com/@matthew_henry?utm_campaign=photo_credit&amp;utm_content=Browse+Free+HD+Images+of+Records+Texture&amp;utm_medium=referral&amp;utm_source=credit">Matthew Henry</a> from <a href="https://burst.shopify.com/textures?utm_campaign=photo_credit&amp;utm_content=Browse+Free+HD+Images+of+Records+Texture&amp;utm_medium=referral&amp;utm_source=credit">Burst</a></p>

                    </footer>
                </div>
    }
}




// Lowest level render
ReactDOM.render(
    <App />,
    document.querySelector('.container')
)
