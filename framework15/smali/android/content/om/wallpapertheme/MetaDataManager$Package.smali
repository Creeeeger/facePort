.class public Landroid/content/om/wallpapertheme/MetaDataManager$Package;
.super Ljava/lang/Object;
.source "MetaDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/om/wallpapertheme/MetaDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Package"
.end annotation


# instance fields
.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mUidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/om/wallpapertheme/MetaDataManager$Uid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmUidList(Landroid/content/om/wallpapertheme/MetaDataManager$Package;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->mUidList:Ljava/util/List;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->mPackageName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->mUidList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist addUid(Landroid/content/om/wallpapertheme/MetaDataManager$Uid;)V
    .locals 1

    iget-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->mUidList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUidList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/om/wallpapertheme/MetaDataManager$Uid;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->mUidList:Ljava/util/List;

    return-object v0
.end method
