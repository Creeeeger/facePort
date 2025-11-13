.class public Lcom/samsung/android/settings/voiceinput/offline/ApiErrorResponse;
.super Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/settings/voiceinput/offline/ApiResponse<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/ApiErrorResponse;->mErrorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getErrorMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/ApiErrorResponse;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method
