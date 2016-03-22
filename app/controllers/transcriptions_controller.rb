class TranscriptionsController < ApplicationController
  def index
    @transcriptions = Transcription.all
  end
end
