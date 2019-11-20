# frozen_string_literal: true

#==============================================================================
# Copyright (C) 2019-present Alces Flight Ltd.
#
# This file is part of Nodeattr Server.
#
# This program and the accompanying materials are made available under
# the terms of the Eclipse Public License 2.0 which is available at
# <https://www.eclipse.org/legal/epl-2.0>, or alternative license
# terms made available by Alces Flight Ltd - please direct inquiries
# about licensing to licensing@alces-flight.com.
#
# Nodeattr Server is distributed in the hope that it will be useful, but
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, EITHER EXPRESS OR
# IMPLIED INCLUDING, WITHOUT LIMITATION, ANY WARRANTIES OR CONDITIONS
# OF TITLE, NON-INFRINGEMENT, MERCHANTABILITY OR FITNESS FOR A
# PARTICULAR PURPOSE. See the Eclipse Public License 2.0 for more
# details.
#
# You should have received a copy of the Eclipse Public License 2.0
# along with Nodeattr Server. If not, see:
#
#  https://opensource.org/licenses/EPL-2.0
#
# For more information on Nodeattr Server, please visit:
# https://github.com/openflighthpc/nodeattr-server
#===============================================================================

require 'sinja/method_override'

use Sinja::MethodOverride
register Sinja

resource :nodes, pkre: /[[:alnum:]]+/ do
  helpers do
    def find(id)
      Node.find(id)
    end
  end

  index do
    Node.all
  end

  show
end

resource :groups, pkre: /[[:alnum:]]+/ do
  helpers do
    def find(id)
      Group.find(id)
    end
  end

  index do
    Group.all
  end

  show
end

resource :clusters, pkre: /[[:alnum:]]+/ do
  helpers do
    def find(id)
      Cluster.find(id)
    end
  end

  index do
    Cluster.all
  end

  show
end

