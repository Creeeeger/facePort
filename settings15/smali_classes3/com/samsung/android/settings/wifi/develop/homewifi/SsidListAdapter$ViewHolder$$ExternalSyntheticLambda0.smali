.class public final synthetic Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;->data:Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;

    iput-boolean p2, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;->selected:Z

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;->setBssidExpansion(Z)V

    return-void
.end method
