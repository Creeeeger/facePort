.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/slice/builders/ListBuilder;


# direct methods
.method public synthetic constructor <init>(Landroidx/slice/builders/ListBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice$$ExternalSyntheticLambda1;->f$0:Landroidx/slice/builders/ListBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice$$ExternalSyntheticLambda1;->f$0:Landroidx/slice/builders/ListBuilder;

    check-cast p1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    sget-object v0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {p0, p1}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    return-void
.end method
