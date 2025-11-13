.class public final synthetic Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/touch/TouchInsetManager;

.field public final synthetic f$1:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

.field public final synthetic f$2:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/touch/TouchInsetManager;Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/touch/TouchInsetManager;

    iput-object p2, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda4;->f$1:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    iput-object p3, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda4;->f$2:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/touch/TouchInsetManager;

    iget-object v1, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda4;->f$1:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    iget-object p0, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda4;->f$2:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/android/systemui/touch/TouchInsetManager;->recycleRegions(Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;)V

    iget-object v2, v0, Lcom/android/systemui/touch/TouchInsetManager;->mSessionRegions:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/systemui/touch/TouchInsetManager;->updateTouchInsets()V

    return-void
.end method
