<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

class DatabaseSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run()
	{
		Model::unguard();

		$this->call('CommentTableSeeder');
		$this->command->info('Comments table seeded.');
	}

}

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
