.class Lcom/ellison/project/activity/StartActivity$AcLifeEvenData;
.super Ljava/lang/Object;
.source "StartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ellison/project/activity/StartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AcLifeEvenData"
.end annotation


# instance fields
.field public ale:Lcom/ellison/project/activity/StartActivity$ActivityLifeEvent;

.field public eName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ellison/project/activity/StartActivity$ActivityLifeEvent;)V
    .locals 0

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p2, p0, Lcom/ellison/project/activity/StartActivity$AcLifeEvenData;->ale:Lcom/ellison/project/activity/StartActivity$ActivityLifeEvent;

    .line 375
    iput-object p1, p0, Lcom/ellison/project/activity/StartActivity$AcLifeEvenData;->eName:Ljava/lang/String;

    return-void
.end method
