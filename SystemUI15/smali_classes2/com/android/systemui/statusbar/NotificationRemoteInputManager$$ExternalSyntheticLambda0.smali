.class public final synthetic Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:[Landroid/app/RemoteInput;

.field public final synthetic f$3:Landroid/app/RemoteInput;

.field public final synthetic f$4:Landroid/app/PendingIntent;

.field public final synthetic f$5:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;

.field public final synthetic f$6:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Landroid/view/View;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;->f$2:[Landroid/app/RemoteInput;

    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;->f$3:Landroid/app/RemoteInput;

    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;->f$4:Landroid/app/PendingIntent;

    iput-object p6, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;->f$5:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;->f$2:[Landroid/app/RemoteInput;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;->f$3:Landroid/app/RemoteInput;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;->f$4:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;->f$5:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->activateRemoteInput(Landroid/view/View;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;)Z

    return-void
.end method
