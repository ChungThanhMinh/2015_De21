<?php // app/database/seeds/CommentTableSeeder.php

class CommentTableSeeder extends Seeder {

    public function run()
    {
        DB::table('comments')->delete();
    
        Comments::create(array(
            'author' => 'Chris Sevilleja',
            'text' => 'Look I am a test comment.'
        ));
    
        Comments::create(array(
            'author' => 'Nick Cerminara',
            'text' => 'This is going to be super crazy.'
        ));
    
        Comments::create(array(
            'author' => 'Holly Lloyd',
            'text' => 'I am a master of Laravel and Angular.'
        ));
    }    

}
?>