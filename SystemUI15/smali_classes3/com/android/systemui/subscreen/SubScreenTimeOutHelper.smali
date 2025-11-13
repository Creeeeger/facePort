.class public final Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final contentObserver:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper$contentObserver$1;

.field public contentResolver:Landroid/content/ContentResolver;

.field public final layoutParamsSupplier:Ljava/util/function/Supplier;

.field public screenTimeOut:I

.field public final subScreenQsWindowViewSupplier:Ljava/util/function/Supplier;

.field public final windowManagerSupplier:Ljava/util/function/Supplier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/WindowManager;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->layoutParamsSupplier:Ljava/util/function/Supplier;

    iput-object p2, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->subScreenQsWindowViewSupplier:Ljava/util/function/Supplier;

    iput-object p3, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->windowManagerSupplier:Ljava/util/function/Supplier;

    const/16 p1, 0x2710

    iput p1, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->screenTimeOut:I

    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p2, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper$contentObserver$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper$contentObserver$1;-><init>(Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->contentObserver:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper$contentObserver$1;

    return-void
.end method


# virtual methods
.method public final readScreenTimeOut()I
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->contentResolver:Landroid/content/ContentResolver;

    const-string v0, "SubScreenTimeOutHelper"

    if-nez p0, :cond_0

    const-string/jumbo p0, "readScreenTimeOut: contentResolver is not initialized"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x2710

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_1
    const-string v1, "cover_screen_timeout"

    const/16 v2, 0xa

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    const-string/jumbo v1, "readScreenTimeOut: "

    invoke-static {p0, v1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return p0
.end method
