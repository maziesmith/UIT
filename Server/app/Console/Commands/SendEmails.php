<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\MonHoc;
use Illuminate\Support\Facades\DB;
class SendEmails extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'word:day';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        DB::table('monhoc')->update(["TOKEN" => "tran van nhu y"]);
      
    }
}
