.class public final Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;


# instance fields
.field public highlightId:Ljava/lang/String;

.field public final navController:Landroidx/navigation/NavHostController;

.field public final onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

.field public sessionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavHostController;Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;->navController:Landroidx/navigation/NavHostController;

    iput-object p2, p0, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    return-void
.end method


# virtual methods
.method public final getHighlightEntryId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;->highlightId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSessionSourceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;->sessionName:Ljava/lang/String;

    return-object p0
.end method

.method public final navigate(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl$navigate$1;

    invoke-direct {v0, p2, p0}, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl$navigate$1;-><init>(ZLcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;)V

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;->navController:Landroidx/navigation/NavHostController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/navigation/NavOptionsBuilderKt;->navOptions(Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NavOptions;

    move-result-object p2

    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Landroidx/navigation/NavController;->navigate$default(Landroidx/navigation/NavController;Ljava/lang/String;Landroidx/navigation/NavOptions;I)V

    return-void
.end method

.method public final navigateBack()V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    :cond_0
    return-void
.end method
