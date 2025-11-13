.class public final synthetic Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->$r8$lambda$EkidRkSDSeaRuIXLhqfnM8SVSCg(Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
