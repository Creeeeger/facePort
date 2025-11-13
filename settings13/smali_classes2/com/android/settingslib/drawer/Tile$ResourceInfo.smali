.class public Lcom/android/settingslib/drawer/Tile$ResourceInfo;
.super Ljava/lang/Object;
.source "Tile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/drawer/Tile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResourceInfo"
.end annotation


# instance fields
.field public mPackageName:Ljava/lang/String;

.field public mResourceId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settingslib/drawer/Tile;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/android/settingslib/drawer/Tile$ResourceInfo;->this$0:Lcom/android/settingslib/drawer/Tile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p2, p0, Lcom/android/settingslib/drawer/Tile$ResourceInfo;->mPackageName:Ljava/lang/String;

    .line 323
    iput-object p3, p0, Lcom/android/settingslib/drawer/Tile$ResourceInfo;->mResourceId:Ljava/lang/String;

    return-void
.end method
