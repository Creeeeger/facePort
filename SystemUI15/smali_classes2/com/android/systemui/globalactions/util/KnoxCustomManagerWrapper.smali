.class public final Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mKnoxCustomManager:Lcom/samsung/android/knox/custom/SystemManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;->mKnoxCustomManager:Lcom/samsung/android/knox/custom/SystemManager;

    return-void
.end method
