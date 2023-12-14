PROTOC_MAIN = ./kpbalanceproto.proto
PROTOC_PAGINATION = ./pagination_balance/pagination_balance.proto
PROTOC_CHECK_CONN = ./check_conn/check_conn.proto 
PROTOC_BALANCE = ./balance/balance.proto
PROTOC_DEPOSIT = ./deposit/deposit.proto
PROTOC_WITHDRAWL = ./withdrawl/withdrawl.proto
PROTOC = protoc
PROTOC_FLAGS = -I . --go_out=. --go_opt=paths=source_relative \
							 --go-grpc_out=. --go-grpc_opt=paths=source_relative

balance:
	@echo "balance proto..."
	$(PROTOC) $(PROTOC_FLAGS) $(PROTOC_BALANCE)

deposit:
	@echo "deposit proto..."
	$(PROTOC) $(PROTOC_FLAGS) $(PROTOC_DEPOSIT)

withdrawl:
	@echo "withrawl proto..."
	$(PROTOC) $(PROTOC_FLAGS) $(PROTOC_WITHDRAWL)

pagination:
	@echo "pagination proto..."
	$(PROTOC) $(PROTOC_FLAGS) $(PROTOC_PAGINATION)

check_conn:
	@echo "check conn proto..."
	$(PROTOC) $(PROTOC_FLAGS) $(PROTOC_CHECK_CONN)

main:
	@echo "create proto..."
	$(PROTOC) $(PROTOC_FLAGS) $(PROTOC_MAIN)

all: pagination check_conn balance deposit withdrawl main

.PHONY: pagination check_conn balance deposit withdrawl main all
