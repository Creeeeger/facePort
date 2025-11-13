.class final Landroidx/compose/material3/SearchBarDefaults$InputField$6;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$changed1:I

.field final synthetic $$default:I

.field final synthetic $colors:Landroidx/compose/material3/TextFieldColors;

.field final synthetic $enabled:Z

.field final synthetic $expanded:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $leadingIcon:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onExpandedChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $onQueryChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $onSearch:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $placeholder:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $query:Ljava/lang/String;

.field final synthetic $tmp7_rcvr:Landroidx/compose/material3/SearchBarDefaults;

.field final synthetic $trailingIcon:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SearchBarDefaults;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SearchBarDefaults;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Z",
            "Lkotlin/jvm/functions/Function1;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/jvm/functions/Function2;",
            "Landroidx/compose/material3/TextFieldColors;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "III)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$tmp7_rcvr:Landroidx/compose/material3/SearchBarDefaults;

    move-object v1, p2

    iput-object v1, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$query:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$onQueryChange:Lkotlin/jvm/functions/Function1;

    move-object v1, p4

    iput-object v1, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$onSearch:Lkotlin/jvm/functions/Function1;

    move v1, p5

    iput-boolean v1, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$expanded:Z

    move-object v1, p6

    iput-object v1, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$onExpandedChange:Lkotlin/jvm/functions/Function1;

    move-object v1, p7

    iput-object v1, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$modifier:Landroidx/compose/ui/Modifier;

    move v1, p8

    iput-boolean v1, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$enabled:Z

    move-object v1, p9

    iput-object v1, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$placeholder:Lkotlin/jvm/functions/Function2;

    move-object v1, p10

    iput-object v1, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    move-object v1, p11

    iput-object v1, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    move-object v1, p12

    iput-object v1, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$colors:Landroidx/compose/material3/TextFieldColors;

    move-object v1, p13

    iput-object v1, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move/from16 v1, p14

    iput v1, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$$changed:I

    move/from16 v1, p15

    iput v1, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$$changed1:I

    move/from16 v1, p16

    iput v1, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$$default:I

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    iget-object v1, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$tmp7_rcvr:Landroidx/compose/material3/SearchBarDefaults;

    iget-object v2, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$query:Ljava/lang/String;

    iget-object v3, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$onQueryChange:Lkotlin/jvm/functions/Function1;

    iget-object v4, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$onSearch:Lkotlin/jvm/functions/Function1;

    iget-boolean v5, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$expanded:Z

    iget-object v6, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$onExpandedChange:Lkotlin/jvm/functions/Function1;

    iget-object v7, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v8, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$enabled:Z

    iget-object v9, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$placeholder:Lkotlin/jvm/functions/Function2;

    iget-object v10, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    iget-object v11, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    iget-object v12, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$colors:Landroidx/compose/material3/TextFieldColors;

    iget-object v13, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget v15, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$$changed:I

    or-int/lit8 v15, v15, 0x1

    invoke-static {v15}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v15

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$$changed1:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v16

    iget v0, v0, Landroidx/compose/material3/SearchBarDefaults$InputField$6;->$$default:I

    move/from16 v17, v0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v17}, Landroidx/compose/material3/SearchBarDefaults;->InputField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
