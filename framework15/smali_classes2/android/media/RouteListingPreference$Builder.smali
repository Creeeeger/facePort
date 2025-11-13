.class public final Landroid/media/RouteListingPreference$Builder;
.super Ljava/lang/Object;
.source "RouteListingPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RouteListingPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/RouteListingPreference$Item;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLinkedItemComponentName:Landroid/content/ComponentName;

.field private blacklist mUseSystemOrdering:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmItems(Landroid/media/RouteListingPreference$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/media/RouteListingPreference$Builder;->mItems:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLinkedItemComponentName(Landroid/media/RouteListingPreference$Builder;)Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Landroid/media/RouteListingPreference$Builder;->mLinkedItemComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUseSystemOrdering(Landroid/media/RouteListingPreference$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/RouteListingPreference$Builder;->mUseSystemOrdering:Z

    return p0
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RouteListingPreference$Builder;->mItems:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/RouteListingPreference$Builder;->mUseSystemOrdering:Z

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/RouteListingPreference;
    .locals 2

    new-instance v0, Landroid/media/RouteListingPreference;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/RouteListingPreference;-><init>(Landroid/media/RouteListingPreference$Builder;Landroid/media/RouteListingPreference-IA;)V

    return-object v0
.end method

.method public whitelist setItems(Ljava/util/List;)Landroid/media/RouteListingPreference$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/RouteListingPreference$Item;",
            ">;)",
            "Landroid/media/RouteListingPreference$Builder;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RouteListingPreference$Builder;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public whitelist setLinkedItemComponentName(Landroid/content/ComponentName;)Landroid/media/RouteListingPreference$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/RouteListingPreference$Builder;->mLinkedItemComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public whitelist setUseSystemOrdering(Z)Landroid/media/RouteListingPreference$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/media/RouteListingPreference$Builder;->mUseSystemOrdering:Z

    return-object p0
.end method
