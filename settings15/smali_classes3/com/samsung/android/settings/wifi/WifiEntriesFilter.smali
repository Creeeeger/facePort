.class public final Lcom/samsung/android/settings/wifi/WifiEntriesFilter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public listener:Lcom/samsung/android/settings/wifi/WifiEntriesFilter$OnFilterChangedListener;

.field public final multiChoiceFilter:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter;

.field public ssidFilter:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiEntriesFilter;->multiChoiceFilter:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter;

    return-void
.end method
