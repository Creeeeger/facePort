.class public final Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/pip/PipMediaController$ActionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$1;->this$0:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMediaActionsChanged(Ljava/util/List;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$1;->this$0:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mMediaActions:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->updateMenuActions$1$1()V

    return-void
.end method
