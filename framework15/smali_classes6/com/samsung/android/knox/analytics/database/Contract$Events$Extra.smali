.class public Lcom/samsung/android/knox/analytics/database/Contract$Events$Extra;
.super Ljava/lang/Object;
.source "Contract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/database/Contract$Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Extra"
.end annotation


# static fields
.field public static final blacklist EVENTS_LIST:Ljava/lang/String; = "eventsList"

.field public static final blacklist INSERT_BULK_EVENTS:Ljava/lang/String; = "insertBulkEvents"

.field public static final blacklist LAST_EVENT_ID:Ljava/lang/String; = "lastEventId"

.field public static final blacklist MAX_CACHED_EVENTS:I = 0x64

.field public static final blacklist SINGLE_EVENT:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
