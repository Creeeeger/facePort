.class public final Lcom/android/systemui/doze/AODManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/doze/AODManagerWrapper$Companion;

.field public static sInstance:Lcom/android/systemui/doze/AODManagerWrapper;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/doze/AODManagerWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/doze/AODManagerWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/doze/AODManagerWrapper;->Companion:Lcom/android/systemui/doze/AODManagerWrapper$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/AODManagerWrapper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/AODManagerWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final getService()Lcom/samsung/android/aod/AODManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/AODManagerWrapper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/aod/AODManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/aod/AODManager;

    move-result-object p0

    return-object p0
.end method

.method public final writeAODCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/doze/AODManagerWrapper;->getService()Lcom/samsung/android/aod/AODManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/doze/AODManagerWrapper;->getService()Lcom/samsung/android/aod/AODManager;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/aod/AODManager;->writeAODCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
