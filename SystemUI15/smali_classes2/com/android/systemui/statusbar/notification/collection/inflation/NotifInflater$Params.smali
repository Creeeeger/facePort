.class public final Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isMinimized:Z

.field public final needsRedaction:Z

.field public final reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;->isMinimized:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;->reason:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;->needsRedaction:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, p4

    :goto_0
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, p5

    :goto_1
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;-><init>(ZLjava/lang/String;ZZZZ)V

    return-void
.end method
