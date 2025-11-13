.class public Landroid/app/FragmentManagerNonConfig;
.super Ljava/lang/Object;
.source "FragmentManagerNonConfig.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final greylist-max-o mChildNonConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/FragmentManagerNonConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Fragment;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/FragmentManagerNonConfig;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/FragmentManagerNonConfig;->mFragments:Ljava/util/List;

    iput-object p2, p0, Landroid/app/FragmentManagerNonConfig;->mChildNonConfigs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method greylist-max-o getChildNonConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/FragmentManagerNonConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/FragmentManagerNonConfig;->mChildNonConfigs:Ljava/util/List;

    return-object v0
.end method

.method greylist-max-o getFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/FragmentManagerNonConfig;->mFragments:Ljava/util/List;

    return-object v0
.end method
