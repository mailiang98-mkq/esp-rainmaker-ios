// Copyright 2025 Espressif Systems
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
//  Node+ClientOnlyControllerUtility.swift
//  ESPRainMaker
//

extension Node {
    
    var isClientOnlyControllerSupported: Bool {
        if let _ = self.getService(forServiceType: Constants.matterControllerServiceType) {
            return true
        }
        return false
    }
    
    var clientOnlyControllerGroupParam: Param? {
        return self.getServiceParam(forServiceType: Constants.matterControllerServiceType, andParamType: ClientOnlyControllerConstants.paramRainmakerGroupId)
    }
    
    var clientOnlyControllerUserTokenParam: Param? {
        return self.getServiceParam(forServiceType: Constants.matterControllerServiceType, andParamType: ClientOnlyControllerConstants.paramUserToken)
    }
    
    var clientOnlyControllerBaseURLParam: Param? {
        return self.getServiceParam(forServiceType: Constants.matterControllerServiceType, andParamType: ClientOnlyControllerConstants.paramBaseURL)
    }
    
    var clientOnlyControllerUpdateDeviceListCommandParam: Param? {
        return self.getServiceParam(forServiceType: Constants.matterControllerServiceType, andParamType: ClientOnlyControllerConstants.paramMatterCtlCmd)
    }
    
    var clientOnlyControllerNodeIdParam: Param? {
        return self.getServiceParam(forServiceType: Constants.matterControllerServiceType, andParamType: ClientOnlyControllerConstants.paramMatterNodeId)
    }
    
    var isClientOnlyControllerFlowSupported: Bool {
        if self.isClientOnlyControllerSupported, let _ = clientOnlyControllerBaseURLParam, let _ = clientOnlyControllerGroupParam, let _ = clientOnlyControllerUserTokenParam {
            return true
        }
        return false
    }
}
