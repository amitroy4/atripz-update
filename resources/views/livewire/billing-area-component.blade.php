<div class="row">
    <div class="col-lg-6">
        <div class="divi">
            <label for="division" class="form-label">Division <span>*</span></label>
            <select required class="form-control mb-2" name="division" id="division" wire:model="selectedDivisions" wire:change="triggerUpdatedSelectedDivisions">
                <option value="0">Select Division...</option>
                @foreach($divisionss as $division)
                    <option value="{{ $division->id }}">{{ $division->name }}</option>
                @endforeach
            </select>
        </div>
        {{-- @if($selectedDivisions)
            <p>Selected Division ID: {{ $selectedDivisions }}</p>
        @endif --}}
    </div>
    <div class="col-lg-6">
        <div class="dis">
            <label for="district" class="form-label">District <span>*</span></label>
            <select required class="form-control mb-2" name="district" id="district" wire:model="selectedDistricts" wire:change="triggerUpdatedSelectedDistricts">
                <option value="0">Select District...</option>
                @foreach($districtss as $district)
                    <option value="{{ $district->id }}">{{ $district->name }}</option>
                @endforeach
            </select>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="ar">
            <label for="area" class="form-label">Area/ Postoffice</label>
            <select required class="form-control mb-2" name="area" id="area" wire:model="selectedPostOffices" wire:change="updateDeliveryCharge">
                <option value="0">Select Area/ Postoffice</option>
                @foreach($postOfficess as $postOffice)
                    <option value="{{ $postOffice->id }}">{{ $postOffice->postOffice }} - {{ $postOffice->postCode }} - {{$postOffice->zone_charge}}</option>
                @endforeach
            </select>
        </div>
    </div>
</div>

@push('dashboard')
<script>
   $(document).ready(function () {
            $('#division').show();
            // $('#division option').show();
            // $('#district').show();
            $('.divi .nice-select').hide();

        // $('.division').change(function () {
        //     $('#b_district').show();
        //     $('#s_district').show();
        //     $('.dis .nice-select').hide();
        // });

        // // When a district is selected
        // $('.district').change(function () {
        //     $('#b_area').show();
        //     $('#s_area').show();
        //     $('.ar .nice-select').hide();
        // });
    });

</script>
@endpush

