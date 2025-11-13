.class public final synthetic Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->this$0:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    const/4 v1, 0x0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->showIndication(I)V

    return-void
.end method
