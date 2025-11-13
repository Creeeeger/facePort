.class public final Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final MAIN_TYPE:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

.field public currentType:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

.field public prevType:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

.field public final viewControllers:[Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;->LayoutEdit:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->MAIN_TYPE:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    sget-object v0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;->None:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->currentType:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->prevType:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->viewControllers:[Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;

    return-void
.end method
