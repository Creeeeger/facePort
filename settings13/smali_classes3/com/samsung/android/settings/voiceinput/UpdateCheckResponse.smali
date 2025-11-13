.class public Lcom/samsung/android/settings/voiceinput/UpdateCheckResponse;
.super Ljava/lang/Object;
.source "UpdateCheckResponse.java"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "result"
    strict = false
.end annotation


# instance fields
.field public contentSize:I
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field

.field public resultCode:I
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field

.field public versionCode:I
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
