.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityInfoWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityInfoWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityInfoWrapper;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityInfoWrapper;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityInfoWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityInfoWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityInfoWrapper;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityInfoWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityInfoWrapper;

    return-object v0
.end method


# virtual methods
.method public getComponentName(Landroid/content/pm/ActivityInfo;)Landroid/content/ComponentName;
    .locals 0

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method
