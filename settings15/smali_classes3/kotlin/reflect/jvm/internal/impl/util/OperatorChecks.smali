.class public abstract Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks;
.super Lkotlin/reflect/jvm/internal/impl/util/AbstractModifierChecks;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final checks:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->GET:Lkotlin/reflect/jvm/internal/impl/name/Name;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck$Member;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck$Member;

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;-><init>(I)V

    filled-new-array {v2, v3}, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->SET:Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;-><init>(I)V

    filled-new-array {v2, v4}, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    move-result-object v4

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks$checks$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks$checks$1;

    invoke-direct {v1, v3, v4, v6}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/functions/Function1;)V

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->GET_VALUE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/util/NoDefaultAndVarargsCheck;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/NoDefaultAndVarargsCheck;

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;

    invoke-direct {v7, v5}, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;-><init>(I)V

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/util/IsKPropertyCheck;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/IsKPropertyCheck;

    filled-new-array {v2, v6, v7, v8}, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    move-result-object v7

    invoke-direct {v3, v4, v7}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->SET_VALUE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-instance v9, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;

    const/4 v10, 0x3

    invoke-direct {v9, v10}, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;-><init>(I)V

    filled-new-array {v2, v6, v9, v8}, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    move-result-object v9

    invoke-direct {v4, v7, v9}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->PROVIDE_DELEGATE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-instance v10, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;

    invoke-direct {v10}, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;-><init>()V

    filled-new-array {v2, v6, v10, v8}, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    move-result-object v8

    invoke-direct {v7, v9, v8}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->INVOKE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    filled-new-array {v2}, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v9, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->CONTAINS:Lkotlin/reflect/jvm/internal/impl/name/Name;

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$NoValueParameters;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$NoValueParameters;

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsBoolean;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsBoolean;

    filled-new-array {v2, v11, v6, v12}, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    move-result-object v13

    invoke-direct {v9, v10, v13}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v10, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->ITERATOR:Lkotlin/reflect/jvm/internal/impl/name/Name;

    sget-object v14, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$NoValueParameters;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$NoValueParameters;

    filled-new-array {v2, v14}, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    move-result-object v15

    invoke-direct {v10, v13, v15}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v13, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->NEXT:Lkotlin/reflect/jvm/internal/impl/name/Name;

    filled-new-array {v2, v14}, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    move-result-object v5

    invoke-direct {v13, v15, v5}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v15, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->HAS_NEXT:Lkotlin/reflect/jvm/internal/impl/name/Name;

    filled-new-array {v2, v14, v12}, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    move-result-object v12

    invoke-direct {v15, v5, v12}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v12, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->RANGE_TO:Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-object/from16 v17, v15

    filled-new-array {v2, v11, v6}, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    move-result-object v15

    invoke-direct {v12, v5, v15}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v15, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->RANGE_UNTIL:Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-object/from16 v18, v12

    filled-new-array {v2, v11, v6}, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    move-result-object v12

    invoke-direct {v15, v5, v12}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v12, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->EQUALS:Lkotlin/reflect/jvm/internal/impl/name/Name;

    sget-object v19, Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck$Member;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck$Member;

    move-object/from16 v20, v15

    filled-new-array/range {v19 .. v19}, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    move-result-object v15

    move-object/from16 v19, v13

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks$checks$2;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks$checks$2;

    invoke-direct {v12, v5, v15, v13}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/functions/Function1;)V

    new-instance v13, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->COMPARE_TO:Lkotlin/reflect/jvm/internal/impl/name/Name;

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsInt;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsInt;

    filled-new-array {v2, v15, v11, v6}, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    move-result-object v15

    invoke-direct {v13, v5, v15}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v15, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->BINARY_OPERATION_NAMES:Ljava/util/Set;

    check-cast v5, Ljava/util/Collection;

    move-object/from16 v21, v13

    filled-new-array {v2, v11, v6}, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    move-result-object v13

    invoke-direct {v15, v5, v13}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v13, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->SIMPLE_UNARY_OPERATION_NAMES:Ljava/util/Set;

    check-cast v5, Ljava/util/Collection;

    move-object/from16 v22, v15

    filled-new-array {v2, v14}, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    move-result-object v15

    invoke-direct {v13, v5, v15}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v15, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->INC:Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-object/from16 v23, v13

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->DEC:Lkotlin/reflect/jvm/internal/impl/name/Name;

    filled-new-array {v5, v13}, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    filled-new-array {v2}, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    move-result-object v13

    move-object/from16 v24, v12

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks$checks$3;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks$checks$3;

    invoke-direct {v15, v5, v13, v12}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/functions/Function1;)V

    new-instance v13, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->ASSIGNMENT_OPERATIONS:Ljava/util/Set;

    check-cast v5, Ljava/util/Collection;

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsUnit;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsUnit;

    filled-new-array {v2, v12, v11, v6}, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    move-result-object v6

    invoke-direct {v13, v5, v6}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v31, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->COMPONENT_REGEX:Lkotlin/text/Regex;

    filled-new-array {v2, v14}, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    move-result-object v2

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/util/Checks$3;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/Checks$3;

    const-string/jumbo v11, "regex"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "additionalChecks"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x2

    invoke-static {v2, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v25, v31

    move-object/from16 v27, v5

    move-object/from16 v29, v6

    invoke-direct/range {v25 .. v30}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/text/Regex;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v7

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    move-object/from16 v8, v19

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object/from16 v11, v20

    move-object/from16 v12, v24

    move-object/from16 v17, v13

    move-object/from16 v16, v23

    move-object/from16 v13, v21

    move-object/from16 v14, v22

    move-object/from16 v18, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v31

    filled-new-array/range {v0 .. v18}, [Lkotlin/reflect/jvm/internal/impl/util/Checks;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks;->checks:Ljava/util/List;

    return-void
.end method
