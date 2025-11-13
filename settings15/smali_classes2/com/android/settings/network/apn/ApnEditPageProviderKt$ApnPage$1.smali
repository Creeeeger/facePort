.class final Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u000b\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/layout/RowScope;",
        "invoke",
        "(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $apnData$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $apnDataInit:Lcom/android/settings/network/apn/ApnData;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $navController:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

.field final synthetic $uriInit:Landroid/net/Uri;

.field final synthetic $valid:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroidx/compose/runtime/MutableState;Lcom/android/settings/network/apn/ApnData;Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p3, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1;->$apnData$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1;->$valid:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1;->$apnDataInit:Lcom/android/settings/network/apn/ApnData;

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1;->$uriInit:Landroid/net/Uri;

    iput-object p5, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1;->$navController:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "$this$RegularScaffold"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, v3, 0x51

    const/16 v3, 0x10

    if-ne v1, v3, :cond_1

    move-object v1, v2

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_1

    :cond_1
    :goto_0
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    const v1, -0x735cecab

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1;->$apnData$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/apn/ApnData;

    iget-object v1, v1, Lcom/android/settings/network/apn/ApnData;->customizedConfig:Lcom/android/settings/network/apn/CustomizedConfig;

    iget-boolean v1, v1, Lcom/android/settings/network/apn/CustomizedConfig;->readOnlyApn:Z

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$1;

    iget-object v9, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1;->$valid:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1;->$apnDataInit:Lcom/android/settings/network/apn/ApnData;

    iget-object v4, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1;->$context:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1;->$uriInit:Landroid/net/Uri;

    iget-object v8, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1;->$navController:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

    iget-object v6, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1;->$apnData$delegate:Landroidx/compose/runtime/MutableState;

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$1;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroidx/compose/runtime/MutableState;Lcom/android/settings/network/apn/ApnData;Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    sget-object v12, Lcom/android/settings/network/apn/ComposableSingletons$ApnEditPageProviderKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/high16 v14, 0x30000000

    const/16 v15, 0x1fe

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v1

    move-object v13, v2

    invoke-static/range {v3 .. v15}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1;->$apnData$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/apn/ApnData;

    iget-boolean v1, v1, Lcom/android/settings/network/apn/ApnData;->newApn:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1;->$apnData$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/apn/ApnData;

    iget-object v1, v1, Lcom/android/settings/network/apn/ApnData;->customizedConfig:Lcom/android/settings/network/apn/CustomizedConfig;

    iget-boolean v1, v1, Lcom/android/settings/network/apn/CustomizedConfig;->readOnlyApn:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1;->$apnData$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/apn/ApnData;

    iget-object v1, v1, Lcom/android/settings/network/apn/ApnData;->customizedConfig:Lcom/android/settings/network/apn/CustomizedConfig;

    iget-boolean v1, v1, Lcom/android/settings/network/apn/CustomizedConfig;->isAddApnAllowed:Z

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$2;

    iget-object v3, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1;->$uriInit:Landroid/net/Uri;

    iget-object v4, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1;->$context:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1;->$navController:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

    invoke-direct {v1, v3, v4, v0}, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$2;-><init>(Landroid/net/Uri;Landroid/content/Context;Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;)V

    const v0, 0x3222547e

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsKt;->MoreOptionsAction(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
