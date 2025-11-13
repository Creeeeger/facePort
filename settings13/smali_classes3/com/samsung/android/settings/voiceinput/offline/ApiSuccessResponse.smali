.class public Lcom/samsung/android/settings/voiceinput/offline/ApiSuccessResponse;
.super Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;
.source "ApiSuccessResponse.java"


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
.field private mBody:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/ApiSuccessResponse;->mBody:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 12
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/ApiSuccessResponse;->mBody:Ljava/lang/Object;

    return-object p0
.end method
