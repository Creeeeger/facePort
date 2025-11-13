.class final Landroid/widget/RemoteViews$HierarchyRootData;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HierarchyRootData"
.end annotation


# instance fields
.field final blacklist mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

.field final blacklist mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

.field final blacklist mClassCookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mRemoteCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews$BitmapCache;Landroid/widget/RemoteViews$RemoteCollectionCache;Landroid/widget/RemoteViews$ApplicationInfoCache;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews$BitmapCache;",
            "Landroid/widget/RemoteViews$RemoteCollectionCache;",
            "Landroid/widget/RemoteViews$ApplicationInfoCache;",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$HierarchyRootData;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iput-object p2, p0, Landroid/widget/RemoteViews$HierarchyRootData;->mRemoteCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    iput-object p3, p0, Landroid/widget/RemoteViews$HierarchyRootData;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iput-object p4, p0, Landroid/widget/RemoteViews$HierarchyRootData;->mClassCookies:Ljava/util/Map;

    return-void
.end method
