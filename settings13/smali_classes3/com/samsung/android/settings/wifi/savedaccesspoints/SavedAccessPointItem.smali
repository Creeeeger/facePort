.class public abstract Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointItem;
.super Landroid/widget/LinearLayout;
.source "SavedAccessPointItem.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mViewType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointItem;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract getViewType()I
.end method
