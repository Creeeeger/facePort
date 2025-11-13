.class public Lcom/samsung/android/settings/voiceinput/offline/ApiErrorResponse;
.super Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;
.source "ApiErrorResponse.java"


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

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/ApiErrorResponse;->mErrorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/ApiErrorResponse;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method
