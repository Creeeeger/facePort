.class public final Lcom/android/systemui/qs/tiles/RecordIssueTile$handleClick$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $expandable:Lcom/android/systemui/animation/Expandable;

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/RecordIssueTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/RecordIssueTile;Lcom/android/systemui/animation/Expandable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RecordIssueTile$handleClick$1;->this$0:Lcom/android/systemui/qs/tiles/RecordIssueTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/RecordIssueTile$handleClick$1;->$expandable:Lcom/android/systemui/animation/Expandable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RecordIssueTile$handleClick$1;->this$0:Lcom/android/systemui/qs/tiles/RecordIssueTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RecordIssueTile$handleClick$1;->$expandable:Lcom/android/systemui/animation/Expandable;

    sget v1, Lcom/android/systemui/qs/tiles/RecordIssueTile;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/qs/tiles/RecordIssueTile$showPrompt$dialog$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/qs/tiles/RecordIssueTile$showPrompt$dialog$1;-><init>(Lcom/android/systemui/qs/tiles/RecordIssueTile;)V

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/RecordIssueTile;->delegateFactory:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$Factory;

    invoke-interface {v2, v1}, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$Factory;->create(Ljava/lang/Runnable;)Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->createDialog()Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/tiles/RecordIssueTile$showPrompt$dismissAction$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/qs/tiles/RecordIssueTile$showPrompt$dismissAction$1;-><init>(Lcom/android/systemui/animation/Expandable;Lcom/android/systemui/qs/tiles/RecordIssueTile;Landroid/app/AlertDialog;)V

    iget-object p0, v0, Lcom/android/systemui/qs/tiles/RecordIssueTile;->keyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;ZZ)V

    return-void
.end method
