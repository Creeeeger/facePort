.class public final Landroidx/core/app/NotificationCompat$Action;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final actionIntent:Landroid/app/PendingIntent;

.field public final icon:I

.field public final mAllowGeneratedReplies:Z

.field public final mAuthenticationRequired:Z

.field public final mExtras:Landroid/os/Bundle;

.field public mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field public final mIsContextual:Z

.field public final mRemoteInputs:[Landroidx/core/app/RemoteInput;

.field public final mSemanticAction:I

.field public final mShowsUserInterface:Z

.field public final title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p6, 0x1

    iput-boolean p6, p0, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz p1, :cond_1

    iget p6, p1, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v0, -0x1

    if-ne p6, v0, :cond_0

    iget-object p6, p1, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast p6, Landroid/graphics/drawable/Icon;

    invoke-virtual {p6}, Landroid/graphics/drawable/Icon;->getType()I

    move-result p6

    :cond_0
    const/4 v0, 0x2

    if-ne p6, v0, :cond_1

    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    move-result p1

    iput p1, p0, Landroidx/core/app/NotificationCompat$Action;->icon:I

    :cond_1
    invoke-static {p2}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object p4, p0, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    iput-object p5, p0, Landroidx/core/app/NotificationCompat$Action;->mRemoteInputs:[Landroidx/core/app/RemoteInput;

    iput-boolean p7, p0, Landroidx/core/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    iput p8, p0, Landroidx/core/app/NotificationCompat$Action;->mSemanticAction:I

    iput-boolean p9, p0, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    iput-boolean p10, p0, Landroidx/core/app/NotificationCompat$Action;->mIsContextual:Z

    iput-boolean p11, p0, Landroidx/core/app/NotificationCompat$Action;->mAuthenticationRequired:Z

    return-void
.end method
