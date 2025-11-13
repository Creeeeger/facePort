.class Lcom/samsung/android/knox/analytics/model/Event$Fields;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Fields"
.end annotation


# static fields
.field static final blacklist BULK:Ljava/lang/String; = "bulk"

.field static final blacklist DATA:Ljava/lang/String; = "data"

.field static final blacklist ID:Ljava/lang/String; = "id"

.field static final blacklist VID:Ljava/lang/String; = "vid"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
