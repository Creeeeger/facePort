.class public Lcom/samsung/android/knox/analytics/database/Contract$Events$Field;
.super Ljava/lang/Object;
.source "Contract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/database/Contract$Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final blacklist BULK:Ljava/lang/String; = "bulk"

.field public static final blacklist DATA:Ljava/lang/String; = "data"

.field public static final blacklist ID:Ljava/lang/String; = "id"

.field public static final blacklist VERSIONING_ID:Ljava/lang/String; = "vid"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
