.class public Lcom/samsung/android/knox/custom/ShortcutItem;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/custom/ShortcutItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mCellX:I

.field public final mCellX_KEY:Ljava/lang/String;

.field public mCellY:I

.field public final mCellY_KEY:Ljava/lang/String;

.field public mColour:I

.field public final mColour_KEY:Ljava/lang/String;

.field public mFolderPosition:I

.field public final mFolderPosition_KEY:Ljava/lang/String;

.field public mIcon:Landroid/graphics/drawable/BitmapDrawable;

.field public final mIcon_KEY:Ljava/lang/String;

.field public mIntent:Landroid/content/Intent;

.field public final mIntent_KEY:Ljava/lang/String;

.field public mMoreItems:I

.field public final mMoreItems_KEY:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public final mName_KEY:Ljava/lang/String;

.field public mParent:Ljava/lang/String;

.field public final mParent_KEY:Ljava/lang/String;

.field public mShortcutType:I

.field public final mShortcutType_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/custom/ShortcutItem$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/custom/ShortcutItem$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/custom/ShortcutItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ShortcutItem"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->TAG:Ljava/lang/String;

    const-string v0, "SHORTCUT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType_KEY:Ljava/lang/String;

    const-string v0, "NAME"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName_KEY:Ljava/lang/String;

    const-string v0, "FOLDER_POS"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition_KEY:Ljava/lang/String;

    const-string v0, "INTENT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent_KEY:Ljava/lang/String;

    const-string v0, "PARENT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent_KEY:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    const-string v1, "CELLX"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX_KEY:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    const-string v1, "CELLY"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY_KEY:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    const-string v0, "COLOUR"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour_KEY:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    const-string v0, "ICON"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon_KEY:Ljava/lang/String;

    const-string v0, "MORE"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems_KEY:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    iput-object p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    iput p6, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ShortcutItem"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->TAG:Ljava/lang/String;

    const-string v0, "SHORTCUT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType_KEY:Ljava/lang/String;

    const-string v0, "NAME"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName_KEY:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    const-string v1, "FOLDER_POS"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition_KEY:Ljava/lang/String;

    const-string v1, "INTENT"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent_KEY:Ljava/lang/String;

    const-string v1, "PARENT"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent_KEY:Ljava/lang/String;

    const-string v1, "CELLX"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX_KEY:Ljava/lang/String;

    const-string v1, "CELLY"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY_KEY:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    const-string v0, "COLOUR"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour_KEY:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    const-string v0, "ICON"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon_KEY:Ljava/lang/String;

    const-string v0, "MORE"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems_KEY:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    iput-object p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    iput p6, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    iput p7, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;IIIILandroid/graphics/drawable/BitmapDrawable;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ShortcutItem"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->TAG:Ljava/lang/String;

    const-string v0, "SHORTCUT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType_KEY:Ljava/lang/String;

    const-string v0, "NAME"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName_KEY:Ljava/lang/String;

    const-string v0, "FOLDER_POS"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition_KEY:Ljava/lang/String;

    const-string v0, "INTENT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent_KEY:Ljava/lang/String;

    const-string v0, "PARENT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent_KEY:Ljava/lang/String;

    const-string v0, "CELLX"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX_KEY:Ljava/lang/String;

    const-string v0, "CELLY"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY_KEY:Ljava/lang/String;

    const-string v0, "COLOUR"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour_KEY:Ljava/lang/String;

    const-string v0, "ICON"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon_KEY:Ljava/lang/String;

    const-string v0, "MORE"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems_KEY:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    iput-object p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    iput p6, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    iput p7, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    iput p8, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    iput-object p9, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    iput p10, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;IILandroid/graphics/drawable/BitmapDrawable;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ShortcutItem"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->TAG:Ljava/lang/String;

    const-string v0, "SHORTCUT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType_KEY:Ljava/lang/String;

    const-string v0, "NAME"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName_KEY:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    const-string v1, "FOLDER_POS"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition_KEY:Ljava/lang/String;

    const-string v1, "INTENT"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent_KEY:Ljava/lang/String;

    const-string v1, "PARENT"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent_KEY:Ljava/lang/String;

    const-string v1, "CELLX"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX_KEY:Ljava/lang/String;

    const-string v1, "CELLY"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY_KEY:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    const-string v0, "COLOUR"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour_KEY:Ljava/lang/String;

    const-string v0, "ICON"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon_KEY:Ljava/lang/String;

    const-string v0, "MORE"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems_KEY:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    iput-object p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    iput p6, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    iput-object p7, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    iput p8, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;ILandroid/graphics/drawable/BitmapDrawable;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ShortcutItem"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->TAG:Ljava/lang/String;

    const-string v0, "SHORTCUT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType_KEY:Ljava/lang/String;

    const-string v0, "NAME"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName_KEY:Ljava/lang/String;

    const-string v0, "FOLDER_POS"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition_KEY:Ljava/lang/String;

    const-string v0, "INTENT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent_KEY:Ljava/lang/String;

    const-string v0, "PARENT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent_KEY:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    const-string v1, "CELLX"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX_KEY:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    const-string v1, "CELLY"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY_KEY:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    const-string v0, "COLOUR"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour_KEY:Ljava/lang/String;

    const-string v0, "ICON"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon_KEY:Ljava/lang/String;

    const-string v0, "MORE"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems_KEY:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    iput-object p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    iput-object p6, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    iput p7, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ShortcutItem"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->TAG:Ljava/lang/String;

    const-string v0, "SHORTCUT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType_KEY:Ljava/lang/String;

    const-string v0, "NAME"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName_KEY:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    const-string v0, "FOLDER_POS"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition_KEY:Ljava/lang/String;

    const-string v0, "INTENT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent_KEY:Ljava/lang/String;

    const-string v0, "PARENT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent_KEY:Ljava/lang/String;

    const-string v0, "CELLX"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX_KEY:Ljava/lang/String;

    const-string v0, "CELLY"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY_KEY:Ljava/lang/String;

    const-string v0, "COLOUR"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour_KEY:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    const-string v0, "ICON"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon_KEY:Ljava/lang/String;

    const-string v0, "MORE"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems_KEY:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    iput-object p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    iput p5, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    iput p6, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    iput p7, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ShortcutItem"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    const-string v1, "SHORTCUT"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType_KEY:Ljava/lang/String;

    const-string v1, "NAME"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName_KEY:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    const-string v2, "FOLDER_POS"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition_KEY:Ljava/lang/String;

    const-string v2, "INTENT"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent_KEY:Ljava/lang/String;

    const-string v2, "PARENT"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent_KEY:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    const-string v2, "CELLX"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX_KEY:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    const-string v2, "CELLY"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY_KEY:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    const-string v2, "COLOUR"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour_KEY:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    const-string v2, "ICON"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon_KEY:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    const-string v0, "MORE"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems_KEY:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-array v2, v0, [B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/custom/ShortcutItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCellX()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    return p0
.end method

.method public getCellY()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    return p0
.end method

.method public getColour()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    return p0
.end method

.method public getFolderPosition()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    return p0
.end method

.method public getIcon()Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object p0
.end method

.method public getIconArray()[B
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getMoreItems()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getParent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    return-object p0
.end method

.method public getShortcutType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "descr:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ShortcutItem;->describeContents()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " shortcutType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " parent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "intent"

    iget-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ShortcutItem;->getIconArray()[B

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p2, p0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
