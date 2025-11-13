.class public final synthetic Lcom/android/systemui/qs/SecQSTileInstanceManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/SecQSTileInstanceManager;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/SecQSTileInstanceManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/SecQSTileInstanceManager;

    iput-object p2, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/SecQSTileInstanceManager;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/qs/SecQSTileInstanceManager;->releaseTileUsing(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
