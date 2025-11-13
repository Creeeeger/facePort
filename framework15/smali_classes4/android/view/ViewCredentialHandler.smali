.class public Landroid/view/ViewCredentialHandler;
.super Ljava/lang/Object;
.source "ViewCredentialHandler.java"


# instance fields
.field private blacklist mCallback:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/GetCredentialResponse;",
            "Landroid/credentials/GetCredentialException;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRequest:Landroid/credentials/GetCredentialRequest;


# direct methods
.method constructor blacklist <init>(Landroid/credentials/GetCredentialRequest;Landroid/os/OutcomeReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/credentials/GetCredentialRequest;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/GetCredentialResponse;",
            "Landroid/credentials/GetCredentialException;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewCredentialHandler;->mRequest:Landroid/credentials/GetCredentialRequest;

    iput-object p2, p0, Landroid/view/ViewCredentialHandler;->mCallback:Landroid/os/OutcomeReceiver;

    return-void
.end method


# virtual methods
.method public blacklist getCallback()Landroid/os/OutcomeReceiver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/GetCredentialResponse;",
            "Landroid/credentials/GetCredentialException;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/ViewCredentialHandler;->mCallback:Landroid/os/OutcomeReceiver;

    return-object v0
.end method

.method public blacklist getRequest()Landroid/credentials/GetCredentialRequest;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewCredentialHandler;->mRequest:Landroid/credentials/GetCredentialRequest;

    return-object v0
.end method
