.class public final Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageCache;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver$ImageCache;


# instance fields
.field public final mCache:Ljava/util/concurrent/ConcurrentHashMap;

.field public mResolver:Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageCache;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method
