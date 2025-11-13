.class public final Landroid/content/ContentProvider$CallingIdentity;
.super Ljava/lang/Object;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CallingIdentity"
.end annotation


# instance fields
.field public final blacklist binderToken:J

.field public final blacklist callingAttributionSource:Landroid/content/AttributionSource;

.field final synthetic blacklist this$0:Landroid/content/ContentProvider;


# direct methods
.method public constructor blacklist <init>(Landroid/content/ContentProvider;JLandroid/content/AttributionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/content/ContentProvider$CallingIdentity;->this$0:Landroid/content/ContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Landroid/content/ContentProvider$CallingIdentity;->binderToken:J

    iput-object p4, p0, Landroid/content/ContentProvider$CallingIdentity;->callingAttributionSource:Landroid/content/AttributionSource;

    return-void
.end method
