.class public abstract Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mFilter:Landroid/content/IntentFilter;

.field public final mSettingsBackUpManager:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mSettingsBackUpManager:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->setFilter()V

    return-void
.end method


# virtual methods
.method public abstract register()V
.end method

.method public abstract setFilter()V
.end method

.method public abstract unregister()V
.end method
