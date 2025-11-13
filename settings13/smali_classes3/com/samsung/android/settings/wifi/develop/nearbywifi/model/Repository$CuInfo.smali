.class public Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;
.super Ljava/lang/Object;
.source "Repository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CuInfo"
.end annotation


# instance fields
.field public channel:I

.field public cu:I

.field public frequency:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;->frequency:I

    .line 139
    iput p2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;->channel:I

    .line 140
    iput p3, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;->cu:I

    return-void
.end method
