.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper;


# instance fields
.field private final mPermissionManager:Landroid/permission/PermissionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-class v1, Landroid/permission/PermissionManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionManager;

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper;->mPermissionManager:Landroid/permission/PermissionManager;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public permGroupUsage(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper;->mPermissionManager:Landroid/permission/PermissionManager;

    invoke-virtual {p0, p1}, Landroid/permission/PermissionManager;->getIndicatorAppOpUsageData(Z)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionGroupUsage;

    invoke-direct {v0, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;-><init>(Landroid/permission/PermissionGroupUsage;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method
