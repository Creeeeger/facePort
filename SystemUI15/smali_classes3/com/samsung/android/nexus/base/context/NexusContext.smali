.class public final Lcom/samsung/android/nexus/base/context/NexusContext;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAnimatorCore:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

.field public final mContext:Landroid/content/Context;

.field public mHeight:I

.field public mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;

    invoke-direct {v0}, Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/nexus/base/context/NexusContext;->mWidth:I

    iput v0, p0, Lcom/samsung/android/nexus/base/context/NexusContext;->mHeight:I

    const-string v0, "NexusContext"

    const-string v1, "NexusContext() : create NexusContext"

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/nexus/base/context/NexusContext;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    invoke-direct {p1}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/nexus/base/context/NexusContext;->mAnimatorCore:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    return-void
.end method
