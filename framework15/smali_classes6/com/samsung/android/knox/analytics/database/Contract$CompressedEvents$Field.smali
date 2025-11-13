.class public Lcom/samsung/android/knox/analytics/database/Contract$CompressedEvents$Field;
.super Ljava/lang/Object;
.source "Contract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/database/Contract$CompressedEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final blacklist BULK:Ljava/lang/String; = "bulk"

.field public static final blacklist CONTENT:Ljava/lang/String; = "content"

.field public static final blacklist ID:Ljava/lang/String; = "id"

.field public static final blacklist LENGTH:Ljava/lang/String; = "length"

.field public static final blacklist ORIGINAL_LENGTH:Ljava/lang/String; = "original_length"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
