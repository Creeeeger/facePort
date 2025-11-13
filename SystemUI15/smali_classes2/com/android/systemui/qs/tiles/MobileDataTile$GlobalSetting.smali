.class public abstract Lcom/android/systemui/qs/tiles/MobileDataTile$GlobalSetting;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSettingName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$GlobalSetting;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$GlobalSetting;->mSettingName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getValue()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$GlobalSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$GlobalSetting;->mSettingName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public abstract handleValueChanged(I)V
.end method

.method public final onChange(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$GlobalSetting;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile$GlobalSetting;->handleValueChanged(I)V

    return-void
.end method
