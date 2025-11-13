.class final Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$maybeShowManageEducation$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $bubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$maybeShowManageEducation$1;->$bubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$maybeShowManageEducation$1;->$bubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "maybeShowManageEducation bubble: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
