.class public final synthetic Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->$r8$lambda$iyV-dI4koNURiof9ahWXMu5uncc(Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
