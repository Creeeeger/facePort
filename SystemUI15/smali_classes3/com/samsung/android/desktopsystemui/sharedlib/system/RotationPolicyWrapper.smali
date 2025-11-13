.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/RotationPolicyWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/RotationPolicyWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RotationPolicyWrapper;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RotationPolicyWrapper;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RotationPolicyWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/RotationPolicyWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/RotationPolicyWrapper;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RotationPolicyWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/RotationPolicyWrapper;

    return-object v0
.end method


# virtual methods
.method public setRotationLock(Z)V
    .locals 1

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "RotationPolicyWrapper#setRotationLock"

    invoke-static {p0, p1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method
