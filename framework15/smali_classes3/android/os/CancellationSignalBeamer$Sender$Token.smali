.class Landroid/os/CancellationSignalBeamer$Sender$Token;
.super Landroid/os/Binder;
.source "CancellationSignalBeamer.java"

# interfaces
.implements Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CancellationSignalBeamer$Sender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CancellationSignalBeamer$Sender$Token$Preparer;
    }
.end annotation


# instance fields
.field private blacklist mPreparer:Landroid/os/CancellationSignalBeamer$Sender$Token$Preparer;

.field private final blacklist mSender:Landroid/os/CancellationSignalBeamer$Sender;


# direct methods
.method private constructor blacklist <init>(Landroid/os/CancellationSignalBeamer$Sender;Landroid/os/CancellationSignal;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Landroid/os/CancellationSignalBeamer$Sender$Token;->mSender:Landroid/os/CancellationSignalBeamer$Sender;

    new-instance v0, Landroid/os/CancellationSignalBeamer$Sender$Token$Preparer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Landroid/os/CancellationSignalBeamer$Sender$Token$Preparer;-><init>(Landroid/os/CancellationSignalBeamer$Sender;Landroid/os/CancellationSignal;Landroid/os/CancellationSignalBeamer$Sender$Token;Landroid/os/CancellationSignalBeamer$Sender$Token$Preparer-IA;)V

    iput-object v0, p0, Landroid/os/CancellationSignalBeamer$Sender$Token;->mPreparer:Landroid/os/CancellationSignalBeamer$Sender$Token$Preparer;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/CancellationSignalBeamer$Sender;Landroid/os/CancellationSignal;Landroid/os/CancellationSignalBeamer$Sender$Token-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/os/CancellationSignalBeamer$Sender$Token;-><init>(Landroid/os/CancellationSignalBeamer$Sender;Landroid/os/CancellationSignal;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    iget-object v0, p0, Landroid/os/CancellationSignalBeamer$Sender$Token;->mPreparer:Landroid/os/CancellationSignalBeamer$Sender$Token$Preparer;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/CancellationSignalBeamer$Sender$Token;->mPreparer:Landroid/os/CancellationSignalBeamer$Sender$Token$Preparer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignalBeamer$Sender$Token$Preparer;->setup()V

    :cond_0
    return-void
.end method

.method public whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/os/CancellationSignalBeamer$Sender$Token;->mSender:Landroid/os/CancellationSignalBeamer$Sender;

    invoke-virtual {v0, p0}, Landroid/os/CancellationSignalBeamer$Sender;->onForget(Landroid/os/IBinder;)V

    return-void
.end method
